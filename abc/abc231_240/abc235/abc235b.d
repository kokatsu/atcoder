import std;

void main() {
    long N;
    readf("%d\n", N);

    auto H = readln.chomp.split.to!(long[]);

    long now;
    while (now < N - 1) {
        if (H[now] < H[now + 1]) {
            ++now;
        }
        else {
            break;
        }
    }

    H[now].writeln;
}
