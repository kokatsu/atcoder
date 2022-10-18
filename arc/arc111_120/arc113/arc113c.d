import std;

void main() {
    string S;
    readf("%s\n", S);

    auto G = S.group.array;

    long L = S.length.to!long;

    auto cnts = new long[](26), pos = new long[](26);
    pos[] = L;

    long res, num = L;
    foreach_reverse (g; G) {
        if (g[1] == 1) {
            ++cnts[g[0]-'a'];
            --num;
        }
        else {
            auto idx = g[0] - 'a';
            res += pos[idx] - num - cnts[idx];

            cnts[] = 0, pos[] = L;

            num -= g[1].to!long;
            pos[idx] = num;
        }
    }

    res.writeln;
}