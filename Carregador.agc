Carregador:

// Barra
	CreateImageColor(1, 0, 0, 255, 255)
	ResizeImage(1, 270, 17)
	CreateSprite(1, 1)

	barraX = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2
	barraY = GetVirtualHeight() - GetSpriteHeight(1)

	SetSpritePosition(1, barraX, barraY)

	SetSpritePhysicsOn(1, 1)

// Bola
	LoadImage(2, "ball_gray.png")
	CreateSprite(2, 2)
	SetSpritePosition(2, 512, 600)
	SetSpritePhysicsOn(2, 2)
	SetSpriteShape(2, 1)

	xVermelho = 0
	xLaranja = 0
	xDourado = 0
	
// Tijolos vermelhos
	for i = 3 to 13
		CreateImageColor(i, 255, 0, 0, 255)
		ResizeImage(i, 100, 100)
		CreateSprite(i, i)
		SetSpritePosition(i, xVermelho, 75)
		xVermelho = xVermelho + 120
	next i
	
// Tijolos laranjas
	for i = 14 to 24
		CreateImageColor(i, 255, 69, 0, 255)
		ResizeImage(i, 100, 100)
		CreateSprite(i, i)
		SetSpritePosition(i, xLaranja, 180)
		xLaranja = xLaranja + 120 
	next i

// Tijolos dourados	
	for i = 25 to 35
		CreateImageColor(i, 255, 215, 0, 255)
		ResizeImage(i, 100, 100)
		CreateSprite(i, i)
		SetSpritePosition(i, xDourado, 285)
		xDourado = xDourado + 120 
	next i

	SetPhysicsWallBottom(0)
Return
