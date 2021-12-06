package DiamonShop.Serializer;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;

import DiamonShop.Dto.ChartDto;

public class ChartSerializer extends StdSerializer<ChartDto> {

	public ChartSerializer(Class<ChartDto> t) {
		super(t);
	}

	public ChartSerializer() {
		this(null);
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void serialize(ChartDto value, JsonGenerator gen, SerializerProvider provider) throws IOException {
		gen.writeStartObject();
		gen.writeObjectField("arrDate", value.getDsData().keySet());
		gen.writeObjectField("arrData", value.getDsData().values());
		gen.writeNumberField("revenue", value.getRevenue());
		gen.writeNumberField("quantity" , value.getQuantity());
		gen.writeEndObject();

	}

}
