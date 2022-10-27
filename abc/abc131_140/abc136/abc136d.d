import std;

void main() {
    string S;
    readf("%s\n", S);

    auto L = S.length;

    int cnt;
    auto res = new int[](L);
    foreach (i, s; S) {
        if (s == 'R') {
            ++cnt;
        }
        else {
            res[i-1] += cnt / 2 + cnt % 2;
            res[i] += cnt / 2;
            cnt = 0;
        }
    }

    foreach_reverse (i, s; S) {
        if (s == 'L') {
            ++cnt;
        }
        else {
            res[i] += cnt / 2;
            res[i+1] += cnt / 2 + cnt % 2;
            cnt = 0;
        }
    }

    writefln("%(%s %)", res);
}