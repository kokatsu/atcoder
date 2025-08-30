import std;

void main() {
    int N;
    readf("%d\n", N);

    string[] S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    int X;
    string Y;
    readf("%d %s\n", X, Y);

    string res = S[X - 1] == Y ? "Yes" : "No";
    res.writeln;
}
