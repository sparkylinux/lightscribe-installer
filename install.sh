#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /opt/sparky-ls/lightscribe-installer
	rm -f /usr/bin/lightscribe-launcher
	rm -f /usr/share/applications/4L-gui.desktop
	rm -f /usr/share/menu/4L-gui
	rm -fr /usr/share/sparky/lightscribe-installer
else
	if [ ! -d /opt/sparky-ls ]; then
		mkdir -p /opt/sparky-ls
	fi
	cp opt/* /opt/sparky-ls/
	cp bin/* /usr/bin/
	cp share/4L-gui.desktop /usr/share/applications/
	cp share/4L-gui /usr/share/menu/
	if [ ! -d /usr/share/sparky/lightscribe-installer ]; then
		mkdir -p /usr/share/sparky/lightscribe-installer
	fi
	cp lang/* /usr/share/sparky/lightscribe-installer/
fi
