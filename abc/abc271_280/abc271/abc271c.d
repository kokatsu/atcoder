import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;

    auto b = a.uniq.array;

    int res;
    int now = 1, cnt = N - b.length.to!int, idx;
    N -= cnt;
    while (idx < N) {
        if (b[idx] != now) {
            if (cnt >= 2) {
                cnt -= 2;
            }
            else if (cnt == 1) {
                if (N - idx >= 1) --cnt, b.popBack, --N;
                else break;
            }
            else {
                if (N - idx >= 2) cnt -= 2, b.popBack, b.popBack, N -= 2;
                else break;
            }
        }
        else {
            ++idx;
        }

        res = now++;
    }

    while (cnt >= 2) {
        ++res, cnt -=2;
    }

    res.writeln;
}