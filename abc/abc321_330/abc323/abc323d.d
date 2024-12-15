import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new long[](N), C = new long[](N);
    long[long] list;
    bool[long] seen;
    foreach (i; 0 .. N) {
        readf("%d %d\n", S[i], C[i]);

        list[S[i]] = C[i];
        seen[S[i]] = false;
    }

    zip(S, C).sort!"a[0] < b[0]";

    long res;
    foreach (s; S) {
        if (seen[s])
            continue;
        seen[s] = true;

        long num = s, cnt = list[s];
        while (num <= 10 ^^ 9 && cnt >= 2) {
            res += cnt % 2;
            num *= 2, cnt /= 2;

            if (num in list) {
                seen[num] = true;
                cnt += list[num];
            }
        }

        while (cnt >= 2) {
            res += cnt % 2;
            cnt /= 2;
        }

        res += cnt;
    }

    res.writeln;
}
