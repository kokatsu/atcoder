import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto B = A.dup;
    B.sort;

    long rem = K, pre, cnt = N;
    foreach (b; B) {
        if (b == pre) {
            --cnt;
            continue;
        }

        long num = (b - pre) * cnt;
        if (num >= rem) {
            long d = rem / cnt, r = rem % cnt;
            foreach (i; 0 .. N) {
                if (A[i] <= pre) {
                    A[i] = 0;
                }
                else {
                    A[i] -= d + pre;
                    if (r > 0) --A[i], --r;
                }
            }

            writefln("%(%s %)", A);
            return;
        }

        rem -= num, pre = b, --cnt;
    }
}