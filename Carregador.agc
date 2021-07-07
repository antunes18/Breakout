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

// Quadrados vermelhos
	CreateImageColor(3, 255, 0, 0, 255)
	ResizeImage(3, 100, 100)
	CreateSprite(3, 3)
	SetSpritePosition(3, 0, 75)

	CreateImageColor(4, 255, 0, 0, 255)
	ResizeImage(4, 100, 100)
	CreateSprite(4, 4)
	SetSpritePosition(4, 120, 75)

	CreateImageColor(5, 255, 0, 0, 255)
	ResizeImage(5, 100, 100)
	CreateSprite(5, 3)
	SetSpritePosition(5, 240, 75)

	CreateImageColor(6, 255, 0, 0, 255)
	ResizeImage(6, 100, 100)
	CreateSprite(6, 3)
	SetSpritePosition(6, 360, 75)

	CreateImageColor(7, 255, 0, 0, 255)
	ResizeImage(7, 100, 100)
	CreateSprite(7, 3)
	SetSpritePosition(7, 480, 75)
	SetSpritePhysicsOn(7, 3)
	SetSpriteShape(7, 2)

	CreateImageColor(8, 255, 0, 0, 255)
	ResizeImage(8, 100, 100)
	CreateSprite(8, 3)
	SetSpritePosition(8, 600, 75)

	CreateImageColor(9, 255, 0, 0, 255)
	ResizeImage(9, 100, 100)
	CreateSprite(9, 3)
	SetSpritePosition(9, 720, 75)

	CreateImageColor(10, 255, 0, 0, 255)
	ResizeImage(10, 100, 100)
	CreateSprite(10, 3)
	SetSpritePosition(10, 840, 75)

	CreateImageColor(11, 255, 0, 0, 255)
	ResizeImage(11, 100, 100)
	CreateSprite(11, 3)
	SetSpritePosition(11, 960, 75)

	CreateImageColor(12, 255, 0, 0, 255)
	ResizeImage(12, 100, 100)
	CreateSprite(12, 3)
	SetSpritePosition(12, 1080, 75)

	CreateImageColor(13, 255, 0, 0, 255)
	ResizeImage(13, 100, 100)
	CreateSprite(13, 3)
	SetSpritePosition(13, 1200, 75)

// Tijolos laranjas
	CreateImageColor(14, 255, 69, 0, 255)
	ResizeImage(14, 100, 100)
	CreateSprite(14, 14)
	SetSpritePosition(14, 0, 180) 
	
	CreateImageColor(15, 255, 69, 0, 255)
	ResizeImage(15, 100, 100)
	CreateSprite(15, 15)
	SetSpritePosition(15, 120, 180) 
	
	CreateImageColor(16, 255, 69, 0, 255)
	ResizeImage(16, 100, 100)
	CreateSprite(16, 16)
	SetSpritePosition(16, 240, 180) 
	
	CreateImageColor(17, 255, 69, 0, 255)
	ResizeImage(17, 100, 100)
	CreateSprite(17, 17)
	SetSpritePosition(17, 360, 180) 
	
	CreateImageColor(18, 255, 69, 0, 255)
	ResizeImage(18, 100, 100)
	CreateSprite(18, 18)
	SetSpritePosition(18, 480, 180) 
	
	CreateImageColor(19, 255, 69, 0, 255)
	ResizeImage(19, 100, 100)
	CreateSprite(19, 19)
	SetSpritePosition(19, 600, 180) 
	
	CreateImageColor(20, 255, 69, 0, 255)
	ResizeImage(20, 100, 100)
	CreateSprite(20, 20)
	SetSpritePosition(20, 720, 180) 
	
	CreateImageColor(21, 255, 69, 0, 255)
	ResizeImage(21, 100, 100)
	CreateSprite(21, 21)
	SetSpritePosition(21, 840, 180) 
	
	CreateImageColor(22, 255, 69, 0, 255)
	ResizeImage(22, 100, 100)
	CreateSprite(22, 22)
	SetSpritePosition(22, 960, 180) 
	
	CreateImageColor(23, 255, 69, 0, 255)
	ResizeImage(23, 100, 100)
	CreateSprite(23, 23)
	SetSpritePosition(23, 1080, 180) 
	
	CreateImageColor(24, 255, 69, 0, 255)
	ResizeImage(24, 100, 100)
	CreateSprite(24, 24)
	SetSpritePosition(24, 1200, 180) 
	
// Tijolos dourados	
	CreateImageColor(25, 255, 215, 0, 255)
	ResizeImage(25, 100, 100)
	CreateSprite(25, 25)
	SetSpritePosition(25, 0, 285)
	
	CreateImageColor(26, 255, 215, 0, 255)
	ResizeImage(26, 100, 100)
	CreateSprite(26, 26)
	SetSpritePosition(26, 120, 285)
	
	CreateImageColor(27, 255, 215, 0, 255)
	ResizeImage(27, 100, 100)
	CreateSprite(27, 27)
	SetSpritePosition(27, 240, 285)
	
	CreateImageColor(28, 255, 215, 0, 255)
	ResizeImage(28, 100, 100)
	CreateSprite(28, 28)
	SetSpritePosition(28, 360, 285) 
	
	CreateImageColor(29, 255, 215, 0, 255)
	ResizeImage(29, 100, 100)
	CreateSprite(29, 29)
	SetSpritePosition(29, 480, 285)
	
	CreateImageColor(30, 255, 215, 0, 255)
	ResizeImage(30, 100, 100)
	CreateSprite(30, 30)
	SetSpritePosition(30, 600, 285)
	
	CreateImageColor(31, 255, 215, 0, 255)
	ResizeImage(31, 100, 100)
	CreateSprite(31, 31)
	SetSpritePosition(31, 720, 285) 
		
	CreateImageColor(32, 255, 215, 0, 255)
	ResizeImage(32, 100, 100)
	CreateSprite(32, 32)
	SetSpritePosition(32, 840, 285)
	
	CreateImageColor(33, 255, 215, 0, 255)
	ResizeImage(33, 100, 100)
	CreateSprite(33, 33)
	SetSpritePosition(33, 960, 285)
	
	CreateImageColor(34, 255, 215, 0, 255)
	ResizeImage(34, 100, 100)
	CreateSprite(34, 34)
	SetSpritePosition(34, 1080, 285)
	
	CreateImageColor(35, 255, 215, 0, 255)
	ResizeImage(35, 100, 100)
	CreateSprite(35, 35)
	SetSpritePosition(35, 1200, 285)
	 
	SetPhysicsWallBottom(0)
Return
