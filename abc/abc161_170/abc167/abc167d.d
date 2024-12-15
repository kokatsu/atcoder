import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    A[] -= 1;

    auto list = new long[](N);
    long pos, pre, cnt;
    while (K > 0 && list[pos] == 0) {
        --K;
        list[pos] = ++cnt;
        pre = pos;
        pos = A[pos];
    }

    long l = list[pre] - list[pos] + 1;
    K -= (K / l) * l;

    while (K > 0) {
        --K;
        pre = pos;
        pos = A[pos];
    }

    ++pos;

    pos.writeln;
}
