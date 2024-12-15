import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long L = 1;
    while (L < N)
        L *= 2;

    long S = L * 2;

    auto data = new long[](S), temp = new long[](S);
    temp[] = long.min;

    foreach (i, a; A)
        data[L + i - 1] = a;

    foreach_reverse (i; 0 .. L - 1)
        data[i] = data[i * 2 + 1] + data[i * 2 + 2];

    void eval(long x) {
        if (temp[x] != long.min) {
            data[x] = temp[x];
            if (x < L - 1) {
                temp[x * 2 + 1] = temp[x * 2 + 2] = temp[x] / 2;
            }
            temp[x] = long.min;
        }
    }

    void sumData(ref long x, long s = 0, long t = N, long l = 0, long r = L, long n = 0) {
        eval(n);
        if (r <= s || t <= l) {
            return;
        }
        else if (s <= l && t >= r) {
            x += data[n];
        }
        else {
            sumData(x, s, t, l, (l + r) / 2, n * 2 + 1);
            sumData(x, s, t, (l + r) / 2, r, n * 2 + 2);
        }
    }

    void updateData(long x, long s = 0, long t = N, long l = 0, long r = L, long n = 0) {
        eval(n);
        if (r <= s || t <= l) {
            return;
        }
        else if (s <= l && t >= r) {
            temp[n] = (r - l) * x;
            eval(n);
        }
        else {
            updateData(x, s, t, l, (l + r) / 2, n * 2 + 1);
            updateData(x, s, t, (l + r) / 2, r, n * 2 + 2);
            data[n] = data[n * 2 + 1] + data[n * 2 + 2];
        }
    }

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(long[]);

        if (query[0] == 1) {
            updateData(query[1]);
        }
        else if (query[0] == 2) {
            long num;
            sumData(num, query[1] - 1, query[1]);
            updateData(num + query[2], query[1] - 1, query[1]);
        }
        else {
            long num;
            sumData(num, query[1] - 1, query[1]);
            num.writeln;
        }
    }
}
