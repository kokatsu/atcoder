import std;

void main() {
    auto dice = Dice6(iota(1, 7).array);

    int n;
    readf("%d\n", n);

    int res = 1;
    foreach (_; 0 .. n) {
        string s;
        readf("%s\n", s);

        dice.op(s);

        res += dice.pip;
    }

    res.writeln;
}

struct Dice6 {
    int[string] dice6;

    this(int[] arr) {
        dice6["top"] = arr[0];
        dice6["front"] = arr[1];
        dice6["right"] = arr[2];
        dice6["left"] = arr[3];
        dice6["back"] = arr[4];
        dice6["bottom"] = arr[5];
    }

    void op(string s) {
        if (s == "East") {
            int tmp = dice6["top"];
            dice6["top"] = dice6["left"];
            dice6["left"] = dice6["bottom"];
            dice6["bottom"] = dice6["right"];
            dice6["right"] = tmp;
        }
        else if (s == "North") {
            int tmp = dice6["top"];
            dice6["top"] = dice6["front"];
            dice6["front"] = dice6["bottom"];
            dice6["bottom"] = dice6["back"];
            dice6["back"] = tmp;
        }
        else if (s == "South") {
            int tmp = dice6["top"];
            dice6["top"] = dice6["back"];
            dice6["back"] = dice6["bottom"];
            dice6["bottom"] = dice6["front"];
            dice6["front"] = tmp;
        }
        else if (s == "West") {
            int tmp = dice6["top"];
            dice6["top"] = dice6["right"];
            dice6["right"] = dice6["bottom"];
            dice6["bottom"] = dice6["left"];
            dice6["left"] = tmp;
        }
        else if (s == "Left") {
            int tmp = dice6["front"];
            dice6["front"] = dice6["left"];
            dice6["left"] = dice6["back"];
            dice6["back"] = dice6["right"];
            dice6["right"] = tmp;
        }
        else if (s == "Right") {
            int tmp = dice6["front"];
            dice6["front"] = dice6["right"];
            dice6["right"] = dice6["back"];
            dice6["back"] = dice6["left"];
            dice6["left"] = tmp;
        }
    }

    @property int pip() {
        return dice6["top"];
    }
}
