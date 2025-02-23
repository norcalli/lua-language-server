build: server/bin/lua-language-server

run: server/bin/lua-language-server
	server/bin/lua-language-server -E -e LANG=en server/main.lua

server/bin/lua-language-server: 3rd/luamake/luamake
	3rd/luamake/luamake rebuild

3rd/luamake/luamake: 3rd/luamake/ninja
	cd 3rd/luamake && ninja -f ninja/linux.ninja

3rd/luamake/ninja:
	git submodule update --init --recursive
