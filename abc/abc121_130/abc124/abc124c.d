import std;

void main() {
    string S;
    readf("%s\n", S);

    int x, y;
    foreach (i, s; S) {
        if ((i % 2 == 0) == (s == '0'))
            ++x;
        else
            ++y;
    }

    int res = min(x, y);
    res.writeln;
}
