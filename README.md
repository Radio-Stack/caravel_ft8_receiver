### Maverick-603 FT8 Receiver

The Maverick-603 is an RF receiver capable of acquiring FT8 signals between 7MHz and 70MHz. FT8 is an amateur radio digital-mode protocol that can be decoded at low signal-strengths and has an extremely long range. If hardware that can decode FT8 frequencies is used, the setup to receive FT8 is simple. As opposed to other digital modes, FT8 antennas are easy to set up and FT8 can still be received and decoded even when there is a lot of ambient noise. It is useful for military, government, and popular among hobbyists but with the current hardware on the market, setup is difficult and requires a large amount of external hardware and software. Our design, however, removes the need for much of these external components.

Our target frequencies (7-70 MHz) were chosen because the most popular FT8 bands fall within this. With this frequency range, we will be able to receive signals from around the world with high accuracy. The use of our LNA will also give the chip the ability to amplify very low strength signals, necessary for an effective FT8 receiver.

The Maverick-603 will include an LNA and an ADC. These components make up the bulk of the receiver functionality and remaining components will be placed directly on the PCB to maximize local functionality.
