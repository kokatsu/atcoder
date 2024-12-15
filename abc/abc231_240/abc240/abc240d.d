import std;

struct S {
    int num, cnt;
}

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int cnt;
    S[] list;
    foreach (A; a) {
        if (list.empty) {
            list ~= S(A, 1);
            ++cnt;
        }
        else {
            auto f = list.back;
            int n = f.num, c = f.cnt;

            if (A == n) {
                if (c + 1 >= n) {
                    cnt -= c;
                    list.popBack;
                }
                else {
                    ++list.back.cnt;
                    ++cnt;
                }
            }
            else {
                list ~= S(A, 1);
                ++cnt;
            }
        }

        cnt.writeln;
    }
}
