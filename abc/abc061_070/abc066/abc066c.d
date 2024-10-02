import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(int[]);

    int[] odd = a.stride(2).array;
    int[] even = a[1..$].stride(2).array;

    string res = (n % 2 == 1)
        ? format("%(%d %) %(%d %)", odd.reverse.array, even)
        : format("%(%d %) %(%d %)", even.reverse.array, odd);
    res.writeln;
}