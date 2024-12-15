import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.cumulativeFold!"a + b".array;

    long[long] cnts;
    cnts[0] = 1;

    auto list = new long[](N + 1);

    long res;
    foreach (i, b; B) {
        long num = (b + K - i - 1) % K;

        if (i >= K - 1)
            --cnts[list[i - K + 1]];

        if (num in cnts)
            res += cnts[num];
        ++cnts[num];
        list[i + 1] = num;
    }

    res.writeln;
}
