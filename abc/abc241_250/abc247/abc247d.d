import std;

struct S {
    long num, cnt;
}

void main() {
    int Q;
    readf("%d\n", Q);

    auto list = new S[](Q);
    long l, r;

    foreach (_; 0 .. Q) {
        auto input = readln.chomp.split.to!(long[]);

        if (input[0] == 1) {
            list[r++] = S(input[1], input[2]);
        }
        else {
            long res, tmp;
            while (tmp < input[1]) {
                long n = list[l].num, c = list[l].cnt;
                long diff = input[1] - tmp;
                if (diff >= c) {
                    res += n * c;
                    tmp += c;
                    ++l;
                }
                else {
                    res += n * diff;
                    tmp += diff;
                    list[l].cnt -= diff;
                }
            }

            res.writeln;
        }
    }
}
