local modem = peripheral.wrap("left")

modem.open(2)

while true do
    local current_fuel = turtle.getFuelLevel()
    local max_fuel = turtle.getFuelLimit()

    modem.transmit(2, 3, os.getComputerLabel() .. " " .. current_fuel .. "/" .. max_fuel)

    os.sleep(2)
end
