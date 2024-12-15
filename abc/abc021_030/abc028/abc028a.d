import std;

string check(int x)
in (0 <= x && x <= 100) {
    if (x < 60)
        return "Bad";
    if (x < 90)
        return "Good";
    if (x < 100)
        return "Great";
    return "Perfect";
}

void main() {
    int N;
    readf("%d\n", N);

    string res = check(N);
    res.writeln;
}
