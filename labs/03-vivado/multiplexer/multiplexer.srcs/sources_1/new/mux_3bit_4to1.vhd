------------------------------------------------------------
--
-- Example of 4-bit binary comparator using the when/else
-- assignments.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 4-bit binary comparator
------------------------------------------------------------
entity comparator_4bit is
    port(
        a_i           : in  std_logic_vector(2  downto 0);
        b_i           : in  std_logic_vector(2  downto 0);
        c_i           : in  std_logic_vector(2  downto 0);
        d_i           : in  std_logic_vector(2  downto 0);
        sel_i         : in std_logic_vector (1 downto 0);
        f_o           : out std_logic_vector(2 downto 0)
    );
end entity comparator_4bit;

------------------------------------------------------------
-- Architecture body for 4-bit binary comparator
------------------------------------------------------------
architecture Behavioral of comparator_4bit is
begin 
p_mux : process(a_i,b_i ,c_i ,d_i ,sel_i )
begin
    case sel_i  is
    when "00" => f_o  <= a_i  ;
    when "01" => f_o  <= b_i  ;
    when "10" => f_o  <= c_i  ;
    when others => f_o  <= d_i  ;

end architecture Behavioral;
