import std;
import core.checkedint;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    auto list = new long[][](N);
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split.to!(long[]);
        list[i] = input[1 .. $];
    }

    long res;
    void dfs(long idx, long num) {
        if (idx == N) {
            if (num == X)
                ++res;
        }
        else {
            foreach (l; list[idx]) {
                bool isOver;
                long m = muls(num, l, isOver);

                if (isOver || m > X) {
                    continue;
                }

                dfs(idx + 1, m);
            }
        }
    }

    dfs(0, 1);

    res.writeln;
}
