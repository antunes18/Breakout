MenuJogo:

// Título do jogo
	CreateText(1, "Breakout!")
	SetTextSize(1, 100)
	SetTextPosition(1, (1280-GetTextTotalWidth(1))/2, 50)

// Botão para carregar as sprites
	AddVirtualButton(1, 640, 300, 50)
	SetVirtualButtonSize(1, 100)
	SetVirtualButtonText(1, "Sprites")
	SetVirtualButtonVisible(1, 1)

// Botão para carregar a música de fundo do jogo
	AddVirtualButton(2, 640, 450, 50)
	SetVirtualButtonSize(2, 100)
	SetVirtualButtonText(2, "Música")
	SetVirtualButtonVisible(2, 1)

// Botões para carregar os efeitos sonoros do jogo
	AddVirtualButton(3, 640, 600, 50)
	SetVirtualButtonSize(3, 100)
	SetVirtualButtonText(3, "Sons")
	SetVirtualButtonVisible(3, 1)
	
	AddVirtualButton(4, 500, 360, 50)
	SetVirtualButtonSize(4, 100)
	SetVirtualButtonText(4, "Hit")
	SetVirtualButtonVisible(4, 0)
	SetVirtualButtonActive(4, 0)
	
	AddVirtualButton(5, 640, 360, 50)
	SetVirtualButtonSize(5, 100)
	SetVirtualButtonText(5, "Game Over")
	SetVirtualButtonVisible(5, 0)
	SetVirtualButtonActive(5, 0)
		
	LoadSound(3, "hit.wav")
	LoadSound(4, "game-over.wav")	
		
// Esconder sprites
	for i = 1 to 35
		SetSpriteVisible(i, 0)
	next i
	
	LoadMusic(1, "menu.mp3")
	SetMusicFileVolume(1, 15)
	PlayMusic(1)

Return





