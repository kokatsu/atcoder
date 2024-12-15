import std;

string libra(int x, int y) {
    if (x > y) {
        return "Left";
    }
    else if (x < y) {
        return "Right";
    }
    else {
        return "Balanced";
    }
}

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    string res = libra(A + B, C + D);
    res.writeln;
}
