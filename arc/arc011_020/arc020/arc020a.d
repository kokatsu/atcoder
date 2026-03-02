import std;

void main() {
    int A, B;
    readfln("%d %d", A, B);

    int D = A.abs - B.abs;

    string res = "Draw";
    if (D < 0) {
        res = "Ant";
    }
    else if (D > 0) {
        res = "Bug";
    }

    res.writeln;
}
