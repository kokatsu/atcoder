import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        readf("%d\n", N);

        auto S = readln.chomp.split.to!(int[]);

        int res = 2, num = S[0];
        if (N > 2) {
            auto rbt = S[1 .. $ - 1].redBlackTree;

            while (num * 2 < S[$ - 1]) {
                auto lb = rbt.lowerBound(num * 2 + 1);
                if (lb.empty || lb.back <= num) {
                    res = -1, num = -1;
                    break;
                }
                ++res, num = lb.back;
            }
        }

        if (num * 2 < S[$ - 1]) {
            res = -1;
        }

        res.writeln;
    }
}
