import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int[] colors = new int[](9);
    foreach (x; a) {
        ++colors[min(x / 400, 8)];
    }

    int m = colors[0 .. 8].count!(x => x > 0)
        .to!int;
    int min = m > 0 ? m : 1;
    int max = m + colors[8];
    writeln(min, " ", max);
}
