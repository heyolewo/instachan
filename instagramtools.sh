    #!/bin/bash


    ########################
    # lewis reis öğreniyor #
    ########################



    # Renkler 


        cyan='\e[0;36m'
        lightcyan='\e[96m'
        lightgreen='\e[1;32m'
        white='\e[1;37m'
        red='\e[1;31m'
        yellow='\e[1;33m'
        blue='\e[1;34m'
        tp='\e[0m'
        green='\e[0;32m'
        bold='\e[25mNormal"'

    ###


    # Nesneler

        blink='\e[5m'
        setdir=$PWD


    #####

    #spinlong
    spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${green}OK${tp}]"
}


    # lolcat çek ediyoz

    checklolcat=$(lolcat -v | awk '{print $1}')
    if [[ $checklolcat = "" ]] ; then
        echo "Lolcat Kuruluyor..."
        gem install lolcat &> /dev/null
        spinlong
    fi


    while :; do
    clear
    cat ./banners/banners1 | lolcat
    echo ""
    echo -e "Brute Force & Phising Program Tool'u v0.0.1" | lolcat
    echo -e "Developer: Lewis & İnstagram : xbatuhanlewis" | lolcat
    echo ""
    echo -e " ${green}[1] ${red}İnstaSpamV4        ${green}[2] ${red} InstagramBruteForce"
    echo -e " ${green}[3] ${red}İnstaShell          ${green}[4] ${red} İnstagmPhish" 
    echo ""
    echo -e "                                          ${green}[E]${blink} Çıkış Yapmak İçin${tp}" 

    echo -n " İstediğiniz Tool'u giriniz! :" | lolcat 
    read n

######## Girişler ########

    if [[ $n = "1" ]] ; then
        if [[ -d instaspamv4 ]] ; then
        echo -e "${green}[~]${red} Tool Zaten İndirilmiş!"
        sleep 1
        else
        git clone https://github.com/tarik0/instaspamv4.git
        echo -e "${cyan}[~] ${red} Tool Başarıyla İndirildi"
        spinlong
        sleep 5
        fi
    elif [[ $n = "2" ]] ; then 
        if [[ -d Instagram ]] ; then
        echo -e "${green}[~]${red} Tool Zaten İndirilmiş!"
        sleep 1
        else
        echo -e "${cyan}[~]${red} Tool İndiriliyor!"
        git clone https://github.com/Pure-L0G1C/Instagram.git
        spinlong
        sleep 3
        fi   
    elif [[ $n =~ ^(E|exit|Exit|e) ]] ; then
        echo -e " ${green}[~]${red} Tool'dan Çıkılıyor Bizi Tercih Ettiğiniz İçin Teşekkürer \n ${green}[~]${red} İnstagram: xbatuhanclouds \n ${green}[~]${red} Discord: https://discord.gg/tYgpQcu \n ${green}[~]${red}Github: https://github.com/lewistodev"
        sleep 1
        exit
    elif [[ $n = '3' ]] ; then
        if [[ -d Instashell ]] ; then
        echo -e "${green}[~]${red} Tool Zaten İndirilmiş!"
        sleep 1
        else
        echo -e "${green}[~]${red} Tool İndirilmeye Başlandı!"
        git clone https://github.com/manuHACK3R/Instashell.git
        echo -e "${cyan}[~] ${red} Tool Başarıyla İndirildi"
        spinlong
        sleep 3
        fi 
    elif [[ $n = '4' ]] ; then
        if [[ -d shellphish ]] ; then
        echo -e "${green}[~]${red} Tool Zaten İndirilmiş!"
        sleep 1
        else
        echo -e "${green}[~]${red} Tool İndirilmeye Başlandı!"
        git clone https://github.com/suljot/shellphish.git
        spinlong
        sleep 3
        fi
        else
        echo -e "${cyan} Yanlış Veri Girdiniz!"
        sleep 1

    fi
    done
