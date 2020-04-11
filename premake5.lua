project "spdlog"
	kind "StaticLib"
	language "C++"
	systemversion "latest"
	staticruntime "On"

	targetdir (vartargetdir .. "/%{prj.name}")
	objdir (varobjdir .. "/%{prj.name}")

	files {
		"include/spdlog/**.h",
		"include/spdlog/**.cpp",
		"src/**.cpp"
	}

	includedirs {
		"include"
	}

	defines {
		"SPDLOG_COMPILED_LIB"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"