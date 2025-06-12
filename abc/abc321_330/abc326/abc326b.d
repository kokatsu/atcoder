import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] numbers;
    foreach (i; 1 .. 10) {
        foreach (j; 0 .. 10) {
            int k = i * j;
            if (k < 10) {
                numbers ~= (i * 10 + j) * 10 + k;
            }
        }
    }

    numbers.sort;

    int res = numbers.find!(x => x >= N).front;
    res.writeln;
}
