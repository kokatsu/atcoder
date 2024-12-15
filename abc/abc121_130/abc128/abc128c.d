import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto s = new int[][](M);
    foreach (i; 0 .. M) {
        s[i] = readln.chomp.split.to!(int[]);
        s[i].popFront;
        s[i][] -= 1;
    }

    auto p = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 0 .. 1 << N) {
        bool isOK = true;

        foreach (j; 0 .. M) {
            int cnt;

            foreach (x; s[j]) {
                if ((i >> x) & 1)
                    ++cnt;
            }

            cnt %= 2;

            isOK &= (cnt == p[j]);
        }

        if (isOK)
            ++res;
    }

    res.writeln;
}
