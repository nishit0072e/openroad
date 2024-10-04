-- Copyright (c) 2016 CERN
-- Maciej Suminski <maciej.suminski@cern.ch>
--
-- This source code is free software; you can redistribute it
-- and/or modify it in source code form under the terms of the GNU
-- General Public License as published by the Free Software
-- Foundation; either version 2 of the License, or (at your option)
-- any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA


-- Test for subtype definitions.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;
use work.vhdl_subtypes_pkg.all;

entity vhdl_subtypes is
    port( a : out int_type_const;
          b : out int_type;
          c : out int_type_downto;
          d : out time_type;
          e : out uns_type_const
      );
end vhdl_subtypes;

architecture test of vhdl_subtypes is
begin
    process
    begin
        a <= 1;
        b <= 2;
        c <= 3;
        d <= 4 s;
        e <= 5;
        wait;
    end process;
end test;
