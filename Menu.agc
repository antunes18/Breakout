MenuJogo:

// Título do jogo
	CreateText(1, "Breakout!")
	SetTextSize(1, 100)
	SetTextPosition(1, (1280-GetTextTotalWidth(1))/2, 50)
	
// Jogar / Play
	CreateText(2, "Clique com o mouse em qualquer canto da tela para jogar!")
	SetTextSize(2, 50)
	SetTextPosition(2, (1280-GetTextTotalWidth(2))/2, 360)
	
	Gosub EsconderSprites
	Gosub MostrarMenu
	
	repeat 
		sync()
	until GetPointerPressed() = 1
	
	gameOver = 0
	
	gosub MostrarSprites
	gosub EsconderMenu
	
Return

EsconderSprites:
	for i = 1 to 35
		SetSpriteVisible(i, 0)
	next i
Return

MostrarSprites:
	for i = 1 to 35
		SetSpriteVisible(i, 1)
	next i
	
	SetSpritePhysicsRestitution(2, 50.0)
	SetSpritePosition(2, 512, 600)
Return

EsconderMenu:
	SetTextVisible(1, 0)
	SetTextVisible(2, 0)
	StopMusic()
	
	LoadMusic(2, "cant-stop-coming.mp3")
	PlayMusic(2)
	SetMusicFileVolume(2, 15)
Return

MostrarMenu:
	SetTextVisible(1, 1)
	SetTextVisible(2, 1)
	LoadMusic(1, "menu.mp3")
	SetMusicFileVolume(1, 15)
	PlayMusic(1)
Return
