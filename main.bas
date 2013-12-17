' Nolan Swindell and Henri Friedeck
' Program Final
' This a text based RPG based on the Pokemon series

' Goals:
' 8 different pokemon, 4 elements. (fire, water, earth, air)
' Fight enemies to get to the boss
' some other stuff, idk.

mainwin 100 25


' POKEDEX
element$(1) = "Fire": element$(2) = "Water": element$(3) = "Earth": element$(4) = "Air"
name$(1) = "Charmander": element(1) = 2 : weakness(1) = 4
name$(2) = "Magmaw"    : element(2) = 2 : weakness(2) = 4
name$(3) = "Squirtel"  : element(3) = 3 : weakness(3) = 1
name$(4) = "Splashy"   : element(4) = 3 : weakness(4) = 1
name$(5) = "Sandshrew" : element(5) = 4 : weakness(5) = 2
name$(6) = "Geopimp"   : element(6) = 4 : weakness(6) = 2
name$(7) = "Pidgey"    : element(7) = 1 : weakness(7) = 3
name$(8) = "Bluejay"   : element(8) = 1 : weakness(8) = 3

'WILD POKEDEX
enemy$(1) = "Cyndaquil": enemy(1, 2) = 1: enWeak(1) = 3
enemy$(2) = "Magikarp": enemy(2, 2) = 2: enWeak(2) = 4
enemy$(3) = "Diglits": enemy(3, 2) = 3: enWeak(3) = 1
enemy$(4) = "Zubat ": enemy(4, 2) = 4: enWeak(4) = 2
enemy$(5) = "Kimber": enemy(5, 2) = 1: enWeak(5) = 3
enemy$(6) = "Gyarados": enemy(6, 2) = 2: enWeak(6) = 4
enemy$(7) = "Cubone": enemy(7, 2) = 3: enWeak(7) = 1
enemy$(8) = "Sparrow": enemy(8, 2) = 4: enWeak(8) = 2
enemy$(9) = "Torchic": enemy(9, 2) = 1: enWeak(9) = 3
enemy$(10) = "Totdile": enemy(10, 2) = 2: enWeak(10) = 4

call startGame name$, poke, type
call getAttacks a$, type

enemy = 1: enemy$ = enemy$(enemy)
call battle name$, poke, type, weakness(poke), enemy$, enemy, enWeak

call gotoGym1 n$, p, t, w, e$, e, eW
call gotoGym2 n$, p, t, w, e$, e, eW


sub startGame byref name$, byref poke, byref type
    call centerTxt "Hello. Welcome to the world of Pokemon!", "You're about to begin you pokemon adeventure!","Prepare for the journey of a lifetime!",""
    dummy$ = input$(1)
    call centerTxt "Before you embark on your journey", "You'll have to choose a pokemon.", "Throughout my research I've collected pokemon eggs", "I'd Like you to choose one"
    dummy$ = input$(1)
    do while type > 4 or type < 1
        call centerTxt "Type 1: Fire", "Type 2: Water", "Type 3: Earth", "Type 4: Air"
        Print
        call centerInput "Pick a type: ", a$
        type = val(a$)
    Loop
    poke = type*2 + chance(2)-1
    tell$ = "Amazing! you have found a " ;name$(poke) ;"!"
    Do While a > 2 Or a < 1
        call centerTxt tell$, "Would you like to name it?", "1: Yes", "2: No"
        Print
        call centerInput "", a$:a = val(a$)
    Loop
    If a = 1 Then
        call centerTxt "", "", "", ""
        call centerInput "Name your pokemon: ", poke$
        Cls
    Else
        poke$ = name$(type)
    End If
    call centerTxt "Here at the pokemon laboratory","we are working to completely fill a device","this device holds all information of all the pokemon","of every pokemon we have on record."
    dummy$ = input$(1)
    call centerTxt "This device is a Pokedex","we are so close to having it complete","we only need six more pokemon!",""
    dummy$ = input$(1)
    call centerTxt "These six pokemon are very rare","but we know where one is","the Gym Leader in Pallet City.","He has a Leolit."
    dummy$ = input$(1)
    call centerTxt "We need you to go there","and gather that pokemon's data","so we'll be that much closer","to filling the pokedex completely."
    dummy$ = input$(1)
    call centerTxt "Pallet City is four towns over","Team Rocket has the roads on lockdown","and won't anyone pass without paying a toll","or with a gym badge from that city"
    dummy$ = input$(1)
    call centerTxt "Here take badge I have","It will allow you to get to Black City","You must defeat the Gym leader there","before you can advance"
    dummy$ = input$(1)
    call centerTxt "You'll want to train yonour pokemon","so they'll be strong enough to defeat the gym leader","you better get off now.","Goodbye!"
End Sub

sub gotoGym1 n$, p, t, w, e$, e, eW
    call centerTxt "Hey you!","Your not supposed to be out here","Pay the tool or face to consequences.",""
    dummy$ = input$(1)
    call centerTxt "*You flash your badge*","My appologies sir","continue on sir","don't hurt me sir"
    dummy$ = input$(1)
    call centerTxt "Hey buddy!","How'd you do that?","How'd you get that Team Rocket","guy to leave you alone"
    dummy$ = input$(1)
    call centerTxt "A badge?!","How do you have a badge?","O Really? I doupt that","Lets see what your got"
    dummy$ = input$(1)
    call battle n$, p, t, w, e$, e, eW
    call centerTxt "Wow! No wonder you have a badge","You're really good can you show me some tricks","Oh. You can't, darn",""
    dummy$ = input$(1)
    call centerTxt "The next town?","Just down this road here","You want me to take you there","Aw Ok dude. Well bye!"
    dummy$ = input$(1)
    call centerTxt "Hey you! You new in town","Team Rocket runs the gig here","Now your gonna have to step off","or pay the price"
    dummy$ = input$(1)
    call centerTxt "A Badge think your something special","I'm the biggest and badest trainer in town","What?! You don't believe me?!","Come on hit me with your best show"
    call battle n$, p, t, w, e$, e, eW
    call centerTxt "Man your one tough kid","You better talk try out","Gym leader Fordsan",""
    dummy$ = input$(1)
    call centerTxt "He's the meanest gymleader of them all.","But he was a weakness to semantics","watch your self though","he's got some good pokemon"
    dummy$ = input$(1)
    call centerTxt "Hello think deeper","I hope you came prepared","because theres not syntax errors","made when you fight me"
    dummy$ = input$(1)
    call centerTxt "I hope your ready","prepare for whats coming","they'll be no mercy from me",""
    call battle n$, p, t, w, e$, e, eW
    call centerTxt "Nooooo!","How'd you no about my semantics","my unstoppable puns?!","This is impossible!"
    dummy$ = input$(1)
    call centerTxt "HA! Byte me","Beat that Fordsan","Look's like you couldn't keep up with my","Semantics"
    dummy$ = input$(1)
    call centerTxt "Here take your badge","and get out of here","you semantics were lacking anyway",""
End Sub

sub gotoGym2 n$, p, t, w, e$, e, eW
    dummy$ = input$(1)
    call centerTxt "Hey kid! I heard you beat","Fordsan, well so have I","lets see hows better","shall we?"
    call battle n$, p, t, w, e$, e, eW
    call centerTxt "I guess you really are the best","I almost had you though","well the next town is down this road","watch out Team Rockets down there"
    dummy$ = input$(1)
    call centerTxt "You must be new in town","well skippy theres rules here","and your gonna have to follow them","or your gonna feal the wrath."
    dummy$ = input$(1)
    call centerTxt "Think your something special","well you're not buddy","well put your money","where your mouth is"
    call battle n$, p, t, w, e$, e, eW
    call centerTxt "Your gonna to face Sanford.","He's the gym leader here","careful though he has some body gaurds","they're pretty tough be wary"
    dummy$ = input$(1)
    call centerTxt "So you came to battle eh?!","Well I only battle the toughest","pokemon trainers around","Hey guys! Take care of our friends"
    call battle n$, p, t, w, e$, e, eW
    dummy$ = input$(1)
    call centerTxt "You got lucky there","but thats a one time thing","come on skippy lets see what you got",""
    call battle n$, p, t, w, e$, e, eW
    dummy$ = input$(1)
    call centerTxt "You've beaten my companions","you are tougher than you look","speak why are you here?",""
    dummy$ = input$(1)
    call centerTxt "My pokemon's data","for a pokedex you say","I'll give it to you","if you can beat me"
    dummy$ = input$(1)
    call centerTxt "But I'm not my mere companions","prepare you'll self traveler","you'll see no mercy from me!",""
    call battle n$, p, t, w, e$, e, eW
    call centerTxt "You fight good kid","here take the data","run on home","here take this badge"
    dummy$ = input$(1)
    call centerTxt "You're back!!","How'd it go?","Did you get the data?","Well?!?"
    dummy$ = input$(1)
    call centerTxt "Good you have it","we're that much closer","to having that pokedex complete","but theres still more to me done"
    dummy$ = input$(1)
    call centerTxt "You better get going","theres still pokemon to collect","you have a good adventure",""
    dummy$ = input$(1)
    call centerTxt "Produced by:","Henri Freidick","Nolan Swindell",""
End Sub

sub getAttacks byref a$, t
    Select Case t
        Case 1
            a$(1) = "Ember"
            a$(2) = "Scratch"
            a$(3) = "Burn"
            a$(4) = "Flamethrower"
        Case 2
            a$(1) = "Bubble"
            a$(2) = "Tackle"
            a$(3) = "Splash"
            a$(4) = "Water Gun"
        Case 3
            a$(1) = "Rock Throw"
            a$(2) = "Tackle"
            a$(3) = "Magnitude"
            a$(4) = "Earthquake"
        Case 4
            a$(1) = "Fly"
            a$(2) = "Tackle"
            a$(3) = "Sand Attack"
            a$(4) = "Skydive"
    End Select
End Sub

sub battle n$, p, t, w, e$, e, eW
    Let tries = 3
 '   do
        enHealth = 50
        plHealth = 50
        enemy$ = "You are battling a(n) " ;e$ ;"."
        Do While a > 2 Or a < 1
            call centerTxt enemy$, "Do you want to fight it, or.. run away?", "1. Fight", "2. Run"
            Print
          call centerInput "", a$:a = val(a$)
      Loop
         Do While answer > 4 Or answer < 1
             call centerTxt "Choose 1 of 3 attacks to use.", a$(1), a$(2), a$(3)
             call centerLine a$(4)
             call centerInput "Choose one!", answer$:answer = val(answer$)
         Loop
         Do While cheque = 0
             roll = roll + 1
             If buffing <> 0 Then
                 buffing = buffing - 1
             Else
         buff = 0
         End If
         If enBuffing <> 0 Then
             enBuffing = enBuffing - 1
         Else
             enBuff = 0
         End If
             damage = Int(Rnd(1) * 3) + 3
             call printHealthBar enHealth, plHealth
             If turn = 0 Then
                 Print: Print: Print: Print
'------------------------------------------------------
                 Do
                     call centerLine "1: Attack"
                     If buffing = 0 Then
                         If healthBuff = 0 Then
                             call centerLine "2: Health Buff"
                         End If
                         If fortify = 0 Then
                             call centerLine "3: Fortify"
                         End If
                         If bezerk = 0 Then
                             call centerLine "4: Bezerk"
                         End If
                        End If
                        call centerInput "Choose: ", re$:re = val(re$)
                       If re = 2 And healthBuff = 0 Then
                            choice = 1
                            healthBuff = 1
                       End If
                        If re = 3 And fortfy = 0 Then
                            fortify = 1
                          choice = 1
                      End If
                      If re = 4 And bezerk = 0 Then
                            bezerk = 1
                             choice = 1
                        End If
                        If buffing = 0 And choice = 1 Then
                            If re < 4 Or re > 1 Then
                                ret = 1
                            End If
                        Else
                            If re <> 1 Then
                                ret = 1
                            End If
                        End If
                        choice = 0
                    Loop While ret = 0
'------------------------------------------------------
                    Select Case re
                    Case 1
                        If eW(e) = p Then
                            If chance(5) = 1 Then
                                damage = Int(damage * 1.35 + 0.5)
                            End If
                        End If
                If enBuffing <> 0 Then
                If enBuff = 2 Then
                    damage = Int(damage * 0.65 + 0.5)
                else:if enBuff = 3 then
                    damage = Int(damage * 1.125 + 0.5)
                End If: End If: End If
                        enHealth = enHealth - damage
                    Case 2
                        plHealth = plHealth + 10
                    Case 3
                        buff = 2
                        buffing = 5
                    Case 4
                        buff = 3
                    End Select
                Else
                    enDamage = Int(Rnd(1) * 3) + 3
                    If w = p Then
                        If chance(5) Then
                            enDamage = Int(enDamage * 1.35 + 0.5)
                        End If
                    End If
                    If roll = 2 Then
                        enBuff = 3
                    End If
                    If enHealth < 10 And enBuff = 0 And enHealthBuff = 0 Then
                        enHealth = enHealth + 10
                        enHealthBuff = 1
                    End If
                    If enHealth < 5 And enBuff = 0 And enBezerk = 0 Then
                        enBuff = 2
                        enBuffing = 5
                        enBezerk = 1
                    End If
                    If enBuff = 2 Then
                        enDamage = Int(damage * 1.35 + 0.5)
                    End If
                    plHealth = plHealth - enDamage
                End If
                If turn = 1 Then
                    turn = 0
                Else
                    turn = 1
                End If
                If enHealth < 1 Or plHealth < 1 Then
                    cheque = 1
                End If
            Loop
           'if plHealth < 1 then
                'call centerTxt "You have been defeated","But you can try again","Prepare adventures",""
               ' if tries < 1 then
               '     call centerTxt "You have been defeated!","Your adventure ends here adventurer","You have failed your mission","Try again later"
'               end if
'         end if
'    loop while tries >= 1
End Sub

sub printHealthBar eH, pH
    Cls
    Print segmentText$("################################################", pH / 50, 2)
    locate 52, 0
    Print segmentText$("################################################", eH / 50, 1)
    locate 0, 2
    Print "YOU"
    locate 90, 2
    Print "ENEMY"

End Sub

sub centerTxt txt1$, txt2$, txt3$, txt4$ 'you need all 4 variables, but they can be "". centers text on the screen.
    txt$(1) = txt1$: txt$(2) = txt2$: txt$(3) = txt3$: txt$(4) = txt4$
    Cls
    Do While cheque = 0
        i = i + 1
        If txt$(i) = "" Then
            cheque = 1
        Else
            am = am + 1
        End If
    Loop
    yCenter = 12 - Int(am / 2)
    For i = 1 To yCenter
        Print
    Next i
    For j = 1 To am
        toPrint$ = ""
        For g = 1 To 50 - Int(Len(txt$(j)) / 2)
            toPrint$ = toPrint$ + " "
        Next g
        Print toPrint$; txt$(j)
    Next j
End Sub

sub centerInput q$, byref a$ 'asks a question in the center of the screen, but only centers in the x coordinate.
    toPrint$ = ""
    For g = 1 To 50 - Int(Len(q$) / 2)
        toPrint$ = toPrint$ + " "
    Next g
    input "" ;toPrint$ ;q$ ;a$
End Sub

sub centerLine l$ 'asks a question in the center of the screen, but only centers in the x coordinate.
    toPrint$ = ""
    For g = 1 To 50 - Int(Len(l$) / 2)
        toPrint$ = toPrint$ + " "
    Next g
    Print toPrint$; l$
End Sub

function segmentText$(txt$, perc, type)
    if type = 1 then
        before$ = ""
        lenToCut = Int(Len(txt$) * perc + 0.5)
        For i = 1 To Len(txt$) - lenToCut
            before$ = before$ + " "
        Next i
        segmentText$ = before$ ;right$(txt$, lenToCut)
    Else
        lenToCut = Int(Len(txt$) * perc + 0.5)
        segmentText$ = Left$(txt$, lenToCut)
    End If
End Function

Function chance(num)
    If Int(Rnd(1) * num) = 1 Then
        chance = 1
    Else
        chance = 0
    End If
End Function

