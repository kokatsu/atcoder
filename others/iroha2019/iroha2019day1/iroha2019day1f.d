import std;

void main() {
    auto input = readln.chomp.split.to!(long[]);
    long N = input[0], K = input[1];

    long div = 2, cnt;
    long[] res;
    while (true) {
        if (cnt == K - 1 && N > 1) {
            res ~= N;
            ++cnt;
            break;
        }

        if (div * div > N) {
            writeln(-1);
            return;
        }

        if (N % div == 0) {
            res ~= div;
            ++cnt;
            N /= div;
        }
        else {
            ++div;
        }
    }

    writefln("%(%s %)", res);
}
