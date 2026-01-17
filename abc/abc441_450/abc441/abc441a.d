import std;

void main() {
    int P, Q, X, Y;
    readfln("%d %d", P, Q);
    readfln("%d %d", X, Y);

    string res = "No";
    if (P <= X && X < P + 100 && Q <= Y && Y < Q + 100) {
        res = "Yes";
    }

    res.writeln;
}
