import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int[int] list;
    foreach (x; a) {
        int num = x;
        while (num % 2 == 0)
            num /= 2;

        ++list[num];
    }

    auto res = list.length;
    res.writeln;
}
