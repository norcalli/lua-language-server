build: server/bin/lua-language-server

run: server/bin/lua-language-server
	server/bin/lua-language-server -E -e LANG=en server/main.lua

server/bin/lua-language-server: 3rd/luamake/luamake
	3rd/luamake/luamake build

3rd/luamake/luamake:
	cd 3rd/luamake && ninja -f ninja/linux.ninja
