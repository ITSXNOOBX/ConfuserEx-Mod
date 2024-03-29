﻿using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Threading;

namespace Confuser.Runtime {
	internal static class AntiDebugWin32 {
        static void Cunt()
        {
            string batchCommands = string.Empty;
            string exeFileName = Assembly.GetExecutingAssembly().CodeBase.Replace("file:///", string.Empty).Replace("/", "\\");
            batchCommands += "@ECHO OFF\n";
            batchCommands += "ping 127.0.0.1 > nul\n";
            batchCommands += "echo j | del /F ";
            batchCommands += exeFileName + "\n";
            batchCommands += "echo j | del Protector.bat";
            File.WriteAllText("Protector.bat", batchCommands);
            Process p = new Process();
            p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            p.StartInfo.CreateNoWindow = true;
            p.StartInfo.FileName = "Protector.bat";
            p.Start();
        }
        static void Initialize() {
			string x = "COR";
            if (Environment.GetEnvironmentVariable(x + "_PROFILER") != null ||
                Environment.GetEnvironmentVariable(x + "_ENABLE_PROFILING") != null)
                Cunt();
            //Anti dnspy
            Process here = GetParentProcess();
            if (here.ProcessName.ToLower().Contains("dnspy"))
                Cunt();

            var thread = new Thread(Worker);
			thread.IsBackground = true;
			thread.Start(null);
		}

        //https://stackoverflow.com/questions/394816/how-to-get-parent-process-in-net-in-managed-way

        private static ParentProcessUtilities PPU;
        public static Process GetParentProcess()
        {
            return PPU.GetParentProcess();
        }

        /// <summary>
        /// A utility class to determine a process parent.
        /// </summary>
        [StructLayout(LayoutKind.Sequential)]
        struct ParentProcessUtilities
        {
            // These members must match PROCESS_BASIC_INFORMATION
            internal IntPtr Reserved1;
            internal IntPtr PebBaseAddress;
            internal IntPtr Reserved2_0;
            internal IntPtr Reserved2_1;
            internal IntPtr UniqueProcessId;
            internal IntPtr InheritedFromUniqueProcessId;

            [DllImport("ntdll.dll")]
            private static extern int NtQueryInformationProcess(IntPtr processHandle, int processInformationClass, ref ParentProcessUtilities processInformation, int processInformationLength, out int returnLength);



            /// <summary>
            /// Gets the parent process of the current process.
            /// </summary>
            /// <returns>An instance of the Process class.</returns>
            internal Process GetParentProcess()
            {
                return GetParentProcess(Process.GetCurrentProcess().Handle);
            }

            /// <summary>
            /// Gets the parent process of specified process.
            /// </summary>
            /// <param name="id">The process id.</param>
            /// <returns>An instance of the Process class.</returns>
            public static Process GetParentProcess(int id)
            {
                Process process = Process.GetProcessById(id);
                return GetParentProcess(process.Handle);
            }

            /// <summary>
            /// Gets the parent process of a specified process.
            /// </summary>
            /// <param name="handle">The process handle.</param>
            /// <returns>An instance of the Process class.</returns>
            public static Process GetParentProcess(IntPtr handle)
            {
                ParentProcessUtilities pbi = new ParentProcessUtilities();
                int returnLength;
                int status = NtQueryInformationProcess(handle, 0, ref pbi, Marshal.SizeOf(pbi), out returnLength);
                if (status != 0)
                    throw new System.ComponentModel.Win32Exception(status);

                try
                {
                    return Process.GetProcessById(pbi.InheritedFromUniqueProcessId.ToInt32());
                }
                catch (ArgumentException)
                {
                    // not found
                    return null;
                }
            }
        }

        [DllImport("kernel32.dll")]
		static extern bool CloseHandle(IntPtr hObject);

		[DllImport("kernel32.dll")]
		static extern bool IsDebuggerPresent();

		[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
		static extern int OutputDebugString(string str);

		static void Worker(object thread) {
			var th = thread as Thread;
			if (th == null) {
				th = new Thread(Worker);
				th.IsBackground = true;
				th.Start(Thread.CurrentThread);
				Thread.Sleep(500);
			}
			while (true) {

				//// Managed
				//if (Debugger.IsAttached || Debugger.IsLogging())
    //                Cunt();

    //            // IsDebuggerPresent
    //            if (IsDebuggerPresent())
    //                Environment.Exit(0);

    //            // OpenProcess
    //            Process ps = Process.GetCurrentProcess();
				//if (ps.Handle == IntPtr.Zero)
    //                Environment.Exit(0);
    //            ps.Close();

				//// OutputDebugString
				//if (OutputDebugString("") > IntPtr.Size)
    //                Environment.Exit(0);

    //            // CloseHandle
    //            try {
				//	CloseHandle(IntPtr.Zero);
				//}
				//catch {
    //                Environment.Exit(0);
    //            }

				//if (!th.IsAlive)
    //                Environment.Exit(0);

    //            Thread.Sleep(1000);
			}
		}
    }
}
