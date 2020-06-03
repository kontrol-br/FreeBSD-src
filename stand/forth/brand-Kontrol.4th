\
\ Redistribution and use in source and binary forms, with or without
\ modification, are permitted provided that the following conditions
\ are met:
\ 1. Redistributions of source code must retain the above copyright
\    notice, this list of conditions and the following disclaimer.
\ 2. Redistributions in binary form must reproduce the above copyright
\    notice, this list of conditions and the following disclaimer in the
\    documentation and/or other materials provided with the distribution.
\
\ THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
\ ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
\ IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
\ ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
\ FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
\ DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
\ OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
\ HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
\ LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
\ OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
\ SUCH DAMAGE.
\
\ $FreeBSD$

2 brandX ! 1 brandY ! \ Initialize brand placement defaults

: brand+ ( x y c-addr/u -- x y' )
	2swap 2dup at-xy 2swap \ position the cursor
	type \ print to the screen
	1+ \ increase y for next time we're called
;

: brand ( x y -- ) \ "konntrol" [wide] logo in B/W (7 rows x 42 columns)

  s"                                          " brand+
	s" _  _____  _  _ _  _ _____ ___  ___  _    " brand+
 	s"| |/ / _ \| \| | \| |_   _| _ \/ _ \| |   " brand+
 	s"| ' < (_) | .` | .` | | | |   / (_) | |__ " brand+
 	s"|_|\_\___/|_|\_|_|\_| |_| |_|_\\___/|____|" brand+
 	s"                                          " brand+
	s"                                          " brand+

	2drop
;
