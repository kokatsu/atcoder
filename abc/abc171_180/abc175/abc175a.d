import std;

void main() {
    string S;
    readf("%s\n", S);

    int res, cnt;
    foreach (s; S) {
        if (s == 'S')
            cnt = 0;
        else
            ++cnt;

        res = max(res, cnt);
    }

    res.writeln;
}
