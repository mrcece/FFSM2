workspace "ffsm2"
	configurations {
		"Debug",
		"Release"
	}
	conformancemode "On"
	debugdir "."
	defines {
		"UNICODE",
		"_UNICODE",
	}
	filename "ffsm2-all"
	flags {
		"FatalCompileWarnings",
		"NoPCH",
	}
	includedirs {
		"development",
		"include",
		"external",
	}
	language "C++"
	location "projects/premake"
	objdir "$(BUILD_ROOT)/$(SolutionName)-$(PlatformArchitecture)/$(ProjectName)-$(Configuration)/"
	platforms {
		"x86",
		"x64",
	}

	system "windows"
	systemversion "latest"
	--systemversion "$([Microsoft.Build.Utilities.ToolLocationHelper]::GetLatestSDKTargetPlatformVersion('Windows', '10.0'))"

	targetdir "binaries/"
	targetname "$(ProjectName)-$(Configuration)-$(PlatformArchitecture)"
	warnings "High"

	filter "toolset:msc-v140 or msc-v141"
		if os.getversion().majorversion == 10 then
			local sWin10SDK = os.getWindowsRegistry( "HKLM:SOFTWARE\\Wow6432Node\\Microsoft\\Microsoft SDKs\\Windows\\v10.0\\ProductVersion" )
			if sWin10SDK ~= nil then systemversion( sWin10SDK .. ".0" ) end
		end

	filter "configurations:debug"
		defines "_DEBUG"
		symbols "On"

	filter "configurations:release"
		defines "NDEBUG"
		intrinsics "On"
		optimize "Speed"
		flags {
			"LinkTimeOptimization",
		}

	filter { "platforms:32" }
		architecture "x86"

	filter { "platforms:64" }
		architecture "x86_64"

	filter "toolset:msc-ClangCL"
		buildoptions {
			"-Wpedantic",
		}
		linkoptions {
			"/INCREMENTAL:NO"
		}

	filter "toolset:msc-v143"
		buildoptions {
			"/permissive-",
		}

-- basic_audio_player

project "basic_audio_player-14"
	cppdialect "C++11"
	files {
		"examples/basic_audio_player/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v140"

project "basic_audio_player-15"
	cppdialect "C++14"
	files {
		"examples/basic_audio_player/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v141"

project "basic_audio_player-16"
	cppdialect "C++17"
	files {
		"examples/basic_audio_player/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v142"

project "basic_audio_player-17"
	cppdialect "C++20"
	files {
		"examples/basic_audio_player/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v143"

project "basic_audio_player-clang"
	cppdialect "C++20"
	files {
		"examples/basic_audio_player/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-ClangCL"

-- basic_traffic_light

project "basic_traffic_light-14"
	cppdialect "C++11"
	files {
		"examples/basic_traffic_light/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v140"

project "basic_traffic_light-15"
	cppdialect "C++14"
	files {
		"examples/basic_traffic_light/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v141"

project "basic_traffic_light-16"
	cppdialect "C++17"
	files {
		"examples/basic_traffic_light/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v142"

project "basic_traffic_light-17"
	cppdialect "C++20"
	files {
		"examples/basic_traffic_light/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v143"

project "basic_traffic_light-clang"
	cppdialect "C++20"
	files {
		"examples/basic_traffic_light/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-ClangCL"

-- debug_logger_interface

project "debug_logger_interface-14"
	cppdialect "C++11"
	files {
		"examples/debug_logger_interface/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v140"

project "debug_logger_interface-15"
	cppdialect "C++14"
	files {
		"examples/debug_logger_interface/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v141"

project "debug_logger_interface-16"
	cppdialect "C++17"
	files {
		"examples/debug_logger_interface/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v142"

project "debug_logger_interface-17"
	cppdialect "C++20"
	files {
		"examples/debug_logger_interface/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v143"

project "debug_logger_interface-clang"
	cppdialect "C++20"
	files {
		"examples/debug_logger_interface/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-ClangCL"

-- temp

project "temp-14"
	cppdialect "C++11"
	files {
		"examples/temp/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v140"

project "temp-15"
	cppdialect "C++14"
	files {
		"examples/temp/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v141"

project "temp-16"
	cppdialect "C++17"
	files {
		"examples/temp/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v142"

project "temp-17"
	cppdialect "C++20"
	files {
		"examples/temp/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v143"

project "temp-clang"
	cppdialect "C++20"
	files {
		"examples/temp/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-ClangCL"

-- test

project "test-14"
	cppdialect "C++11"
	files {
		"development/**.*",
		"test/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v140"

project "test-15"
	cppdialect "C++14"
	files {
		"development/**.*",
		"test/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v141"

project "test-16"
	cppdialect "C++17"
	files {
		"development/**.*",
		"test/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v142"

project "test-17"
	cppdialect "C++20"
	files {
		"development/**.*",
		"test/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-v143"

project "test-clang"
	cppdialect "C++20"
	files {
		"development/**.*",
		"test/**.*",
	}
	kind "ConsoleApp"
	toolset "msc-ClangCL"
