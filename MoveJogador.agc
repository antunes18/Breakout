MovimentacaoJogador:

	barraX = barraX + GetJoystickX() * 12

	if barraX < 0
		barraX = 0
	endif

	if barraX > GetVirtualWidth() - GetSpriteWidth(1)
		barraX = GetVirtualWidth() - GetSpriteWidth(1)
	endif

	SetSpritePosition(1, barraX, barraY)

Return
