import std;

void main() {
    int N;
    readf("%d\n", N);

    auto h = readln.chomp.split.to!(int[]);

    int l;
    int[] list = [0];
    foreach (x; h) {
        if (x > l) {
            list.back = x;
        }
        else if (x < l) {
            list.back = l - x;
            list ~= x;
        }

        l = x;
    }

    int res = list.sum;
    res.writeln;
}