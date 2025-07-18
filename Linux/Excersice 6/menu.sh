menu(){
    path="C:\Users\Hasaki\learnDevOps\Linux"
    cd ${path}
    excercises=$(ls)
    num_ex=0
    echo "0: Quit"
    for excercise in ${excercises}
    do
        if [ ${excercise} != 'menu.sh' ]
        then
            num_ex=`expr ${num_ex}  + 1`
            echo "${num_ex}: ${excercise}"
        fi
    done
}

run_excercise(){
    case $1 in
        0) exit 0;;
        1) ./ex1.sh
            read -p "Press Enter to back to menu...";;
        2) ./ex2.sh google-123.com
            read -p "Press Enter to back to menu...";;
        3) ./ex3.sh
            read -p "Press Enter to back to menu...";;
        4) ./ex4.sh 1
            read -p "Press Enter to back to menu...";;
        5) ./ex5.sh
            read -p "Press Enter to back to menu...";;
        6) ./ex6.sh ex6.sh
            read -p "Press Enter to back to menu...";;
        7) ./ex7.sh excercise_d6
            read -p "Press Enter to back to menu...";;
        8) ./ex8.sh dog
            read -p "Press Enter to back to menu...";;
        9) ./ex9.sh -i hello
            read -p "Press Enter to back to menu...";;
        *) echo "Please enter a valid number."
    esac

}
while true;
do
    echo -e "Please select a number to access excercises\n\
    $(menu)\n\
    Your option: "
    read option
    run_excercise ${option}
done

