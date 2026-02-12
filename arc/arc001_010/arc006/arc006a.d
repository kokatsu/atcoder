import std;

void main() {
    int[] E = readln.chomp.split.to!(int[]);

    int B;
    readfln("%d", B);

    int[] L = readln.chomp.split.to!(int[]);

    int C;
    foreach (e; E) {
        if (L.canFind(e)) {
            ++C;
        }
    }

    int res;
    if (C == 6) {
        res = 1;
    }
    else if (C == 5 && L.canFind(B)) {
        res = 2;
    }
    else if (C == 5) {
        res = 3;
    }
    else if (C == 4) {
        res = 4;
    }
    else if (C == 3) {
        res = 5;
    }

    res.writeln;
}
