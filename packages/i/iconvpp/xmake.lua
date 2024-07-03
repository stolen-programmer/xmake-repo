
package("iconvpp")

    set_homepage("https://www.gnu.org/software/libiconv")

    add_deps("libiconv")
    set_urls("https://github.com/unnonouno/iconvpp.git")
    add_versions("2016.12.29", "6866f9b62e27c5e712eed8cc86889cd7ea6d4679")

    on_fetch(function (p) 
        return {
            includedirs = p:installdir("include")
        }
    end)

    on_install(function (p) 
        os.cp("iconv.hpp" , p:installdir("include"))
    end)
