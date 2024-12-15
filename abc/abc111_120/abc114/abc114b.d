import std;

void main() {
    string S;
    readf("%s\n", S);

    auto len = S.length;

    int res = int.max, num = 753;
    foreach (i; 2 .. len) {
        int X = S[i - 2 .. i + 1].to!int;
        res = min(res, abs(X - num));
    }

    res.writeln;
}
