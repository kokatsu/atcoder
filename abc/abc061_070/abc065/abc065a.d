import std;

void main() {
    int X, A, B;
    readf("%d %d %d\n", X, A, B);

    int D = B - A;

    string res = "dangerous";
    if (D <= 0) {
        res = "delicious";
    }
    else if (D <= X) {
        res = "safe";
    }

    res.writeln;
}
