import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    bool upper = X < Y && X + 2 >= Y;
    bool lower = X > Y && X - 3 <= Y;

    string res = upper || lower ? "Yes" : "No";
    res.writeln;
}
