import std;

void main() {
    real L;
    readf("%f\n", L);

    auto dims = new real[](3);
    dims[0] = L / 3.0;
    dims[1] = dims[0];
    dims[2] = L - dims[0] - dims[1];

    real res = dims.fold!"a * b";
    writefln("%.10f", res);
}
