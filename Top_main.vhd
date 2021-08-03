----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.07.2021 12:12:25
-- Design Name: 
-- Module Name: Top_main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_main is
--  Port ( );
    Port ( 
       clk: in std_logic;
       sw: in std_logic_vector(15 downto 0);
       led: out std_logic_vector(15 downto 0)
    );
end Top_main;

architecture Behavioral of Top_main is
    signal leds: std_logic_vector(15 downto 0);
    signal counter: std_logic_vector(15 downto 0);
    signal counter2: std_logic_vector(10 downto 0);
    signal divided_clk: std_logic;
begin
   led <= leds;
    sample: process(counter2(10)) begin
        if(rising_edge(counter2(10))) then
        leds(0) <= not(leds(0));
            
        end if;
    end process;
    
    clk_division: process(clk) begin
        if(rising_edge(clk)) then
            
                counter <= std_logic_vector(unsigned(counter)+1);
            
        end if;
    end process;
        clk_division2: process(counter(15)) begin
        if(rising_edge(counter(15))) then
            
                counter2 <= std_logic_vector(unsigned(counter2)+1);
            
        end if;
    end process;

end Behavioral;
