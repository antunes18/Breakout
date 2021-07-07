
// Project: Breakout 
// Created: 2021-06-09

// show all errors
	SetErrorMode(2)

// set window properties
	SetWindowTitle("Breakout")
	SetWindowSize(1280, 720, 0)
	SetWindowAllowResize(1) // allow the user to resize the window

// set display properties
	SetVirtualResolution (1280, 720) // doesn't have to match the window
	SetSyncRate(60, 0) // 30fps instead of 60 to save battery
	SetScissor(0,0,0,0) // use the maximum available screen space, no black borders
	UseNewDefaultFonts(1) // since version 2.0.22 we can use nicer default fonts

	#include "Carregador.agc"
	#include "MoveJogador.agc"
	#include "Menu.agc"

	Gosub Carregador

	flagColisao = 1
	pontuacao = 0
	pontuacaoMaisAlta = 0
	colisaoBolaBarra = 0

	Gosub MenuJogo
		
do	
	Gosub MovimentacaoJogador
	// SetSpritePhysicsRestitution (2, 1000)
	
// Mostrar sprite da barra, da bola, dos tijolos e esconder os botões
	if GetVirtualButtonPressed(1)
		StopMusic() 		 
		for i = 1 to 5
			SetVirtualButtonActive(i, 0)
		next i
		
		for i = 1 to 35
			SetSpriteVisible(i, 1)
		next i
		
		for i = 3 to 35
			SetSpriteShape(i, 2)
			SetSpritePhysicsOn(i, 3)
		next i
		
		SetTextVisible(1, 0)
		
		SetVirtualButtonVisible(1, 0)
		SetVirtualButtonVisible(2, 0)
		SetVirtualButtonVisible(3, 0)
	endif
	
// Ocultar botões, sprites e tocar música de fundo		
	if GetVirtualButtonPressed(2) 
		for i = 1 to 5
			SetVirtualButtonActive(i, 0)
		next i
		
		SetTextVisible(1, 0)
		SetVirtualButtonVisible(1, 0)
		SetVirtualButtonVisible(2, 0)
		SetVirtualButtonVisible(3, 0)
		
		LoadMusic(2, "cant-stop-coming.mp3")
		PlayMusic(2, 2)
		SetMusicFileVolume(2, 15)
		
		CreateText(2, "Música de fundo: Azazel - Can't Stop Coming")
		SetTextSize(2, 50)
		SetTextAlignment(2, 1)
		SetTextPosition(2, 640, 360)
	endif
	
// Ocultar botões, sprites e tocar sons (efeitos sonoros)
	if GetVirtualButtonPressed(3)
		StopMusic() 
		
		SetTextVisible(1, 0)
		SetVirtualButtonActive(1, 0)
		SetVirtualButtonActive(2, 0)
		SetVirtualButtonActive(3, 0)
		
		SetVirtualButtonVisible(1, 0)
		SetVirtualButtonVisible(2, 0)
		SetVirtualButtonVisible(3, 0)
		SetVirtualButtonVisible(4, 1)
		SetVirtualButtonVisible(5, 1)
		
		SetVirtualButtonActive(4, 1)
		SetVirtualButtonActive(5, 1)
	endif
	
	if GetVirtualButtonPressed(4)
		PlaySound(3)
	endif
	
	if GetVirtualButtonPressed(5)			
		PlaySound(4)
	endif
	
	/*
	if flagColisao = 1
		if GetSpriteCollision(2, 7) = 1
			DeleteSprite(7)
			flagColisao = 0
		endif
	endif
	*/
			
	Sync()
	
	if colisaoBolaBarra = GetPhysicsCollision(1, 2)
		SetSpritePhysicsRestitution (2, 1000)
	endif
loop

//SetSpritePosition(2, 512, 384)

// SetSpriteShapeCircle(2, 0, 0, 16)

// SetSpritePhysicsAngularVelocity (2, random ( 0, 10 ) )

// SetSpritePhysicsVelocity(2, 0, 10)

//SetPhysicsGravity(0, 200)

//SetSpritePhysicsOn (2, 2)
