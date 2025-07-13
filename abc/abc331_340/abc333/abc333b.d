import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    int U = abs(S[0] - S[1]);
    int V = abs(T[0] - T[1]);

    int X = min(U, 5 - U);
    int Y = min(V, 5 - V);

    string res = X == Y ? "Yes" : "No";
    res.writeln;
}
