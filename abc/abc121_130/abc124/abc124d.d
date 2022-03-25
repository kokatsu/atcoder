import std;

void main() {
    uint N, K;
    readf("%d %d\n", N, K);

    auto S = readln.chomp;

    auto G = S.group;

    auto list = new uint[](N);
    uint res, num, pos;
    foreach (g; G) {
        list[pos] += g[1];

        if (g[0] == '0') {
            ++pos;
            if (pos > K) {
                num -= list[pos-K-1];
            }
        }

        num += g[1];
        res = max(res, num);
    }

    res.writeln;
}