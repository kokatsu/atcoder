import std;

void main() {
    int H, W;
    readfln("%d %d", H, W);

    string res = W * 400 >= H * H ? "Yes" : "No";
    res.writeln;
}
